const handler = (req, res) => {
  res.status(200).json({ status: 'health_check_OK' })
}

export default handler
