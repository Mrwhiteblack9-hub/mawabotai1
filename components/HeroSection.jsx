'use client'
import Link from 'next/link'
import Countdown from './Countdown'
export default function HeroSection({ buyUrl, lang, dict }) {
  const targetISO = '2025-09-13T00:00:00Z'
  const titleParts = dict.title.split('—')[1]?.split(',').map(s => s.trim()) || []
  const colors = ['--mawa-blue','--mawa-white','--mawa-red']
  return (
    <section id="hero" className="grid lg:grid-cols-5 gap-8 items-center py-8">
      <div className="lg:col-span-3">
        <div className="inline-flex items-center gap-3 px-3 py-1 rounded-full bg-white/5 text-xs">{dict.tag}</div>
        <h1 className="mt-6 text-4xl md:text-6xl font-extrabold leading-tight">
          MAWA — {titleParts.map((word, i) => (
            <span key={i} style={{ color: `var(${colors[i % colors.length]})` }}>
              {word}{i < titleParts.length - 1 ? ', ' : ''}
            </span>
          ))}
        </h1>
        <p className="mt-4 text-white/80 max-w-xl">{dict.description}</p>
        <div className="mt-6 flex flex-wrap gap-3">
          <a href={buyUrl} target="_blank" rel="noreferrer" className="btn-primary">{dict.buy_btn}</a>
          <a href="#tokenomics" className="px-5 py-2 rounded-2xl border border-white/10">{dict.tokenomics_btn}</a>
        </div>
        <div><Countdown targetISO={targetISO} /></div>
        <div className="mt-4 text-xs text-white/60">{dict.contract}: <span className="font-mono bg-white/5 px-2 py-1 rounded">SOON...</span></div>
      </div>
      <div className="lg:col-span-2 flex justify-center lg:justify-end">
        <div className="w-full max-w-lg rounded-2xl overflow-hidden shadow-glow">
          <video autoPlay loop muted playsInline className="w-full h-full object-cover">
            <source src="/banner.mp4" type="video/mp4" />
            Your browser does not support the video tag.
          </video>
        </div>
      </div>
    </section>
  )
}
