import cookie from "react-cookies";

const admission = () => {
    const admissions = cookie.load("admission") || null;

    return <>
        <h1 className="text-center text-info mt-2">Hệ</h1>
        {Object.values(admissions).map(a => <div>{a.typeoftraining}</div>)}
    </>
}

export default admission;