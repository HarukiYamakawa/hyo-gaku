export default (req, res) => {
    res.status(200).json({ status: 'health_check_OK' });
}