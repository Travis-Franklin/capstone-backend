
//need to figure out how to insert userID into table
async function createUser ( userName, password, firstName, lastName, email ){
    const hash = createHash(password);
    const result = await db.one(`
        insert into users
        (user_name, password, first_name, last_name, email)
        values
        ($1, $2, $3, $4, $5 )
        returning user_id
        `, [userName, hash, firstName, lastName, email]);
    console.log(`user_id = ${result.user_id}`);
    return result.user_id;

};