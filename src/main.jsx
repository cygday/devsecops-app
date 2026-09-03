import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';

function App() {
  return (
    <main>
      <h1>DevSecOps App</h1>
      <p>Build and security pipeline is ready.</p>
    </main>
  );
}

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
);
