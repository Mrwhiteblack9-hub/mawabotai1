'use client'
import { useState, useRef, useEffect } from 'react'

export default function ProjectDemoSection({ dict }) {
  const [activeTab, setActiveTab] = useState(0)
  const videoRefs = useRef([])

  useEffect(() => {
    videoRefs.current.forEach((video, index) => {
      if (video && index !== activeTab) {
        video.pause()
      }
    })
    if (videoRefs.current[activeTab]) {
      videoRefs.current[activeTab].play()
    }
  }, [activeTab])

  return (
    <section id="demo" className="section">
      <div className="text-center max-w-3xl mx-auto">
        <h2 className="text-3xl font-bold mb-8">{dict.title}</h2>
      </div>

      <div className="max-w-5xl mx-auto">
        {/* Tab Buttons */}
        <div className="flex justify-center flex-wrap gap-2 md:gap-4 mb-6">
          {dict.tabs.map((tab, index) => (
            <button
              key={index}
              onClick={() => setActiveTab(index)}
              className={`px-4 py-2 text-sm font-semibold rounded-full transition-colors duration-300 ${
                activeTab === index
                  ? 'bg-mawa-blue text-black'
                  : 'bg-mawa-card hover:bg-white/10'
              }`}
            >
              {tab.name}
            </button>
          ))}
        </div>

        {/* Tab Content */}
        <div className="relative">
          {dict.tabs.map((tab, index) => (
             <div
              key={index}
              className={`transition-opacity duration-500 ${ activeTab === index ? 'opacity-100' : 'opacity-0 absolute inset-0 pointer-events-none' }`}
            >
              {activeTab === index && (
                <div className="card">
                  <p className="text-center mb-4 text-white/80">{tab.desc}</p>
                  <div className="bg-mawa-bg p-2 rounded-lg aspect-video overflow-hidden">
                    {/* IMPORTANT: Remplacez cette vidéo par votre visuel */}
                    <video
                      ref={el => videoRefs.current[index] = el}
                      src={tab.video_url}
                      alt={`${tab.name} Demo`}
                      className="w-full h-full object-contain rounded-md"
                      autoPlay
                      loop
                      muted
                      playsInline
                    />
                  </div>
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
