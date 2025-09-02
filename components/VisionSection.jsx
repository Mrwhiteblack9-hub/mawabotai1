export default function VisionSection({ dict }) {
  return (
    <section id="vision" className="section">
      <div className="grid md:grid-cols-2 gap-12 items-center max-w-5xl mx-auto">
        <div className="text-center md:text-left">
          <h2 className="text-3xl font-bold mb-4">{dict.title}</h2>
          <p className="text-white/80">{dict.text}</p>
        </div>
        <div className="flex justify-center">
            <img src="/logo.jpg" alt="MAWA Vision" className="w-48 h-48 rounded-full shadow-glow" />
        </div>
      </div>
    </section>
  )
}
