import { createClient } from "https://esm.sh/@supabase/supabase-js@2";

// ---------------------------------------------------------------------------
// Translations — nav labels, section headings, badge text, footer
// ---------------------------------------------------------------------------
const i18n: Record<string, Record<string, string>> = {
  en: {
    gallery: "Gallery",
    biography: "Biography",
    contact: "Contact",
    forSale: "For Sale",
    noArtworks: "No artworks published yet.",
    inquireSubject: "Interested in",
    contactArtist: "Contact the artist",
    close: "Close",
    email: "Email",
    instagram: "Instagram",
    website: "Website",
    phone: "Phone",
    facebook: "Facebook",
    location: "Location",
    footer: "Portfolio powered by Artive",
  },
  es: {
    gallery: "Galería",
    biography: "Biografía",
    contact: "Contacto",
    forSale: "En venta",
    noArtworks: "Aún no hay obras publicadas.",
    inquireSubject: "Interesado en",
    contactArtist: "Contactar al artista",
    close: "Cerrar",
    email: "Correo electrónico",
    instagram: "Instagram",
    website: "Sitio web",
    phone: "Teléfono",
    facebook: "Facebook",
    location: "Ubicación",
    footer: "Portfolio impulsado por Artive",
  },
  de: {
    gallery: "Galerie",
    biography: "Biografie",
    contact: "Kontakt",
    forSale: "Zum Verkauf",
    noArtworks: "Noch keine Werke veröffentlicht.",
    inquireSubject: "Interesse an",
    contactArtist: "Künstler kontaktieren",
    close: "Schließen",
    email: "E-Mail",
    instagram: "Instagram",
    website: "Website",
    phone: "Telefon",
    facebook: "Facebook",
    location: "Ort",
    footer: "Portfolio powered by Artive",
  },
  fr: {
    gallery: "Galerie",
    biography: "Biographie",
    contact: "Contact",
    forSale: "En vente",
    noArtworks: "Aucune œuvre publiée pour l'instant.",
    inquireSubject: "Intéressé par",
    contactArtist: "Contacter l'artiste",
    close: "Fermer",
    email: "E-mail",
    instagram: "Instagram",
    website: "Site web",
    phone: "Téléphone",
    facebook: "Facebook",
    location: "Lieu",
    footer: "Portfolio propulsé par Artive",
  },
  it: {
    gallery: "Galleria",
    biography: "Biografia",
    contact: "Contatto",
    forSale: "In vendita",
    noArtworks: "Nessuna opera pubblicata ancora.",
    inquireSubject: "Interessato a",
    contactArtist: "Contatta l'artista",
    close: "Chiudi",
    email: "E-mail",
    instagram: "Instagram",
    website: "Sito web",
    phone: "Telefono",
    facebook: "Facebook",
    location: "Luogo",
    footer: "Portfolio powered by Artive",
  },
  pt: {
    gallery: "Galeria",
    biography: "Biografia",
    contact: "Contato",
    forSale: "À venda",
    noArtworks: "Nenhuma obra publicada ainda.",
    inquireSubject: "Interesse em",
    contactArtist: "Contatar o artista",
    close: "Fechar",
    email: "E-mail",
    instagram: "Instagram",
    website: "Site",
    phone: "Telefone",
    facebook: "Facebook",
    location: "Localização",
    footer: "Portfolio powered by Artive",
  },
  nl: {
    gallery: "Galerij",
    biography: "Biografie",
    contact: "Contact",
    forSale: "Te koop",
    noArtworks: "Nog geen werken gepubliceerd.",
    inquireSubject: "Interesse in",
    contactArtist: "Neem contact op met de artiest",
    close: "Sluiten",
    email: "E-mail",
    instagram: "Instagram",
    website: "Website",
    phone: "Telefoon",
    facebook: "Facebook",
    location: "Locatie",
    footer: "Portfolio powered by Artive",
  },
  pl: {
    gallery: "Galeria",
    biography: "Biografia",
    contact: "Kontakt",
    forSale: "Na sprzedaż",
    noArtworks: "Brak opublikowanych prac.",
    inquireSubject: "Zainteresowany",
    contactArtist: "Skontaktuj się z artystą",
    close: "Zamknij",
    email: "E-mail",
    instagram: "Instagram",
    website: "Strona",
    phone: "Telefon",
    facebook: "Facebook",
    location: "Lokalizacja",
    footer: "Portfolio powered by Artive",
  },
  ru: {
    gallery: "Галерея",
    biography: "Биография",
    contact: "Контакт",
    forSale: "На продажу",
    noArtworks: "Работы ещё не опубликованы.",
    inquireSubject: "Интерес к",
    contactArtist: "Связаться с художником",
    close: "Закрыть",
    email: "Эл. почта",
    instagram: "Instagram",
    website: "Сайт",
    phone: "Телефон",
    facebook: "Facebook",
    location: "Местоположение",
    footer: "Портфолио на Artive",
  },
  tr: {
    gallery: "Galeri",
    biography: "Biyografi",
    contact: "İletişim",
    forSale: "Satılık",
    noArtworks: "Henüz yayınlanan eser yok.",
    inquireSubject: "Hakkında ilgi",
    contactArtist: "Sanatçıyla iletişime geç",
    close: "Kapat",
    email: "E-posta",
    instagram: "Instagram",
    website: "Web sitesi",
    phone: "Telefon",
    facebook: "Facebook",
    location: "Konum",
    footer: "Portfolio powered by Artive",
  },
  zh: {
    gallery: "画廊",
    biography: "简介",
    contact: "联系",
    forSale: "出售中",
    noArtworks: "暂无已发布的作品。",
    inquireSubject: "对以下作品感兴趣",
    contactArtist: "联系艺术家",
    close: "关闭",
    email: "电子邮件",
    instagram: "Instagram",
    website: "网站",
    phone: "电话",
    facebook: "Facebook",
    location: "地点",
    footer: "作品集由 Artive 提供",
  },
  ja: {
    gallery: "ギャラリー",
    biography: "プロフィール",
    contact: "お問い合わせ",
    forSale: "販売中",
    noArtworks: "作品はまだ公開されていません。",
    inquireSubject: "作品に興味があります",
    contactArtist: "アーティストに問い合わせる",
    close: "閉じる",
    email: "メール",
    instagram: "Instagram",
    website: "ウェブサイト",
    phone: "電話",
    facebook: "Facebook",
    location: "場所",
    footer: "Artive によるポートフォリオ",
  },
  ko: {
    gallery: "갤러리",
    biography: "약력",
    contact: "연락처",
    forSale: "판매 중",
    noArtworks: "아직 게시된 작품이 없습니다.",
    inquireSubject: "관심 작품",
    contactArtist: "아티스트에게 연락",
    close: "닫기",
    email: "이메일",
    instagram: "Instagram",
    website: "웹사이트",
    phone: "전화",
    facebook: "Facebook",
    location: "위치",
    footer: "Artive로 만든 포트폴리오",
  },
  hi: {
    gallery: "गैलरी",
    biography: "जीवनी",
    contact: "संपर्क",
    forSale: "बिक्री के लिए",
    noArtworks: "अभी तक कोई कृति प्रकाशित नहीं।",
    inquireSubject: "में रुचि",
    contactArtist: "कलाकार से संपर्क करें",
    close: "बंद करें",
    email: "ईमेल",
    instagram: "Instagram",
    website: "वेबसाइट",
    phone: "फ़ोन",
    facebook: "Facebook",
    location: "स्थान",
    footer: "Artive द्वारा पोर्टफोलियो",
  },
  ar: {
    gallery: "معرض",
    biography: "السيرة الذاتية",
    contact: "تواصل",
    forSale: "للبيع",
    noArtworks: "لا توجد أعمال منشورة بعد.",
    inquireSubject: "مهتم بـ",
    contactArtist: "تواصل مع الفنان",
    close: "إغلاق",
    email: "البريد الإلكتروني",
    instagram: "Instagram",
    website: "الموقع",
    phone: "الهاتف",
    facebook: "Facebook",
    location: "الموقع",
    footer: "محفظة أعمال مدعومة من Artive",
  },
  bn: {
    gallery: "গ্যালারি",
    biography: "জীবনী",
    contact: "যোগাযোগ",
    forSale: "বিক্রয়ের জন্য",
    noArtworks: "এখনো কোনো শিল্পকর্ম প্রকাশিত হয়নি।",
    inquireSubject: "আগ্রহী",
    contactArtist: "শিল্পীর সাথে যোগাযোগ করুন",
    close: "বন্ধ করুন",
    email: "ইমেইল",
    instagram: "Instagram",
    website: "ওয়েবসাইট",
    phone: "ফোন",
    facebook: "Facebook",
    location: "অবস্থান",
    footer: "Artive দ্বারা পোর্টফোলিও",
  },
  vi: {
    gallery: "Thư viện",
    biography: "Tiểu sử",
    contact: "Liên hệ",
    forSale: "Đang bán",
    noArtworks: "Chưa có tác phẩm nào được công bố.",
    inquireSubject: "Quan tâm đến",
    contactArtist: "Liên hệ nghệ sĩ",
    close: "Đóng",
    email: "Email",
    instagram: "Instagram",
    website: "Trang web",
    phone: "Điện thoại",
    facebook: "Facebook",
    location: "Địa điểm",
    footer: "Portfolio được xây dựng bởi Artive",
  },
  th: {
    gallery: "แกลเลอรี",
    biography: "ประวัติ",
    contact: "ติดต่อ",
    forSale: "ขายอยู่",
    noArtworks: "ยังไม่มีผลงานที่เผยแพร่",
    inquireSubject: "สนใจ",
    contactArtist: "ติดต่อศิลปิน",
    close: "ปิด",
    email: "อีเมล",
    instagram: "Instagram",
    website: "เว็บไซต์",
    phone: "โทรศัพท์",
    facebook: "Facebook",
    location: "ที่ตั้ง",
    footer: "พอร์ตโฟลิโอโดย Artive",
  },
  id: {
    gallery: "Galeri",
    biography: "Biografi",
    contact: "Kontak",
    forSale: "Dijual",
    noArtworks: "Belum ada karya yang dipublikasikan.",
    inquireSubject: "Tertarik dengan",
    contactArtist: "Hubungi seniman",
    close: "Tutup",
    email: "Email",
    instagram: "Instagram",
    website: "Situs web",
    phone: "Telepon",
    facebook: "Facebook",
    location: "Lokasi",
    footer: "Portfolio powered by Artive",
  },
};

const SUPPORTED = Object.keys(i18n);

function resolveLanguage(acceptLanguage: string | null): string {
  if (!acceptLanguage) return "en";
  const tags = acceptLanguage
    .split(",")
    .map((s) => s.split(";")[0].trim().toLowerCase().substring(0, 2));
  for (const tag of tags) {
    if (SUPPORTED.includes(tag)) return tag;
  }
  return "en";
}

function t(lang: string, key: string): string {
  return (i18n[lang] ?? i18n["en"])[key] ?? (i18n["en"][key] ?? key);
}

function esc(str: string | null | undefined): string {
  if (!str) return "";
  return str
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

// ---------------------------------------------------------------------------
// Main handler
// ---------------------------------------------------------------------------
Deno.serve(async (req: Request) => {
  const lang = resolveLanguage(req.headers.get("accept-language"));
  const isRtl = lang === "ar";

  const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
  const supabaseKey = Deno.env.get("SUPABASE_ANON_KEY")!;
  const supabase = createClient(supabaseUrl, supabaseKey);

  // Fetch profile and public artworks in parallel
  const [profileRes, artworksRes] = await Promise.all([
    supabase.from("artist_profile").select("*").eq("id", 1).maybeSingle(),
    supabase
      .from("artworks")
      .select("*, artwork_images(*)")
      .eq("is_public", true)
      .order("date_year", { ascending: false })
      .order("created_at", { ascending: false }),
  ]);

  const profile = profileRes.data;
  const artworks = artworksRes.data ?? [];
  const artistName = esc(profile?.name) || "Artist";

  // Build image URL helper (same bucket logic as the Flutter app)
  const bucketBase = `${supabaseUrl}/storage/v1/object/public/artworks/`;
  function imgUrl(path: string | null | undefined): string | null {
    if (!path) return null;
    return bucketBase + encodeURIComponent(path).replace(/%2F/g, "/");
  }

  // Collect all contact methods for the modal
  const contacts: { label: string; value: string; href: string }[] = [];
  if (profile?.contact_email) {
    contacts.push({
      label: t(lang, "email"),
      value: profile.contact_email,
      href: `mailto:${encodeURIComponent(profile.contact_email)}`,
    });
  }
  if (profile?.contact_instagram) {
    const handle = profile.contact_instagram.startsWith("@")
      ? profile.contact_instagram
      : `@${profile.contact_instagram}`;
    const username = handle.replace(/^@/, "");
    contacts.push({
      label: t(lang, "instagram"),
      value: handle,
      href: `https://instagram.com/${encodeURIComponent(username)}`,
    });
  }
  if (profile?.contact_website) {
    contacts.push({
      label: t(lang, "website"),
      value: profile.contact_website,
      href: profile.contact_website,
    });
  }
  if (profile?.contact_phone) {
    contacts.push({
      label: t(lang, "phone"),
      value: profile.contact_phone,
      href: `tel:${profile.contact_phone.replace(/\s/g, "")}`,
    });
  }
  if (profile?.contact_facebook) {
    contacts.push({
      label: t(lang, "facebook"),
      value: profile.contact_facebook,
      href: profile.contact_facebook,
    });
  }
  if (profile?.contact_location) {
    contacts.push({
      label: t(lang, "location"),
      value: profile.contact_location,
      href: "",
    });
  }

  function renderContactModal(): string {
    if (contacts.length === 0) return "";
    const items = contacts
      .map((c) => {
        if (!c.href) {
          return `<li><span class="cl">${esc(c.label)}:</span> <span>${esc(c.value)}</span></li>`;
        }
        return `<li><span class="cl">${esc(c.label)}:</span> <a href="${esc(c.href)}" target="_blank" rel="noopener noreferrer">${esc(c.value)}</a></li>`;
      })
      .join("");
    return `
<div id="modal-overlay" class="modal-overlay hidden" role="dialog" aria-modal="true" aria-labelledby="modal-title">
  <div class="modal">
    <h3 id="modal-title"></h3>
    <ul class="contact-list">${items}</ul>
    <button class="modal-close" id="modal-close-btn" aria-label="${esc(t(lang, "close"))}">${esc(t(lang, "close"))}</button>
  </div>
</div>`;
  }

  function renderArtworkCard(artwork: Record<string, unknown>): string {
    const images = (artwork["artwork_images"] as Record<string, unknown>[]) ?? [];
    // Pick best image: scan (priority 0) → main (1) → photoReference (2)
    const priority: Record<string, number> = { scan: 0, main: 1, photo_reference: 2 };
    const sorted = [...images].sort(
      (a, b) =>
        (priority[a["tag"] as string] ?? 9) -
        (priority[b["tag"] as string] ?? 9)
    );
    const mainImg = sorted[0];
    const thumb = mainImg
      ? imgUrl(
          (mainImg["thumbnail_path"] as string) ??
            (mainImg["storage_path"] as string)
        )
      : null;

    const name = esc(artwork["name"] as string);
    const year = artwork["date_year"] ? String(artwork["date_year"]) : "";
    const medium = esc(artwork["medium"] as string);
    const dimension = esc(artwork["dimension"] as string);
    const isForSale = artwork["is_for_sale"] === true;
    const currency = esc(artwork["price_currency"] as string | undefined);
    const amount = artwork["price_amount"]
      ? Number(artwork["price_amount"]).toLocaleString(lang, {
          minimumFractionDigits: 0,
          maximumFractionDigits: 2,
        })
      : null;

    const saleBadge =
      isForSale && amount
        ? `<button class="sale-badge" onclick="openModal(${JSON.stringify(name)})" aria-label="${esc(t(lang, "contactArtist"))}">${esc(t(lang, "forSale"))} · ${currency} ${amount}</button>`
        : "";

    const imgEl = thumb
      ? `<img src="${esc(thumb)}" alt="${name}" loading="lazy" />`
      : `<div class="no-img"></div>`;

    const meta = [year, medium, dimension].filter(Boolean).join(" · ");

    return `
<article class="card">
  <div class="card-img">${imgEl}</div>
  <div class="card-body">
    <p class="card-title">${name}</p>
    <p class="card-meta">${esc(meta)}</p>
    ${saleBadge}
  </div>
</article>`;
  }

  const html = `<!DOCTYPE html>
<html lang="${esc(lang)}"${isRtl ? ' dir="rtl"' : ""}>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>${artistName}</title>
  <meta name="description" content="${artistName} — ${esc(t(lang, "gallery"))}" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    :root {
      --bg: #fafafa;
      --surface: #fff;
      --border: #e0e0e0;
      --text: #1a1a1a;
      --muted: #757575;
      --accent: #6750a4;
      --accent-container: #eaddff;
      --radius: 12px;
      --nav-h: 60px;
    }
    @media (prefers-color-scheme: dark) {
      :root {
        --bg: #141218;
        --surface: #1d1b20;
        --border: #333;
        --text: #e6e1e5;
        --muted: #917f9e;
        --accent: #cfbcff;
        --accent-container: #4a3f6b;
      }
    }
    html { scroll-behavior: smooth; }
    body { font-family: system-ui, -apple-system, sans-serif; background: var(--bg); color: var(--text); line-height: 1.6; }
    a { color: var(--accent); text-decoration: none; }
    a:hover { text-decoration: underline; }

    /* Nav */
    nav {
      position: sticky; top: 0; z-index: 100;
      background: var(--surface); border-bottom: 1px solid var(--border);
      height: var(--nav-h);
      display: flex; align-items: center; justify-content: space-between;
      padding: 0 24px; gap: 16px;
    }
    .nav-brand { font-size: 1.1rem; font-weight: 700; color: var(--text); flex-shrink: 0; }
    .nav-links { display: flex; gap: 24px; list-style: none; }
    .nav-links a { color: var(--muted); font-size: 0.9rem; font-weight: 500; transition: color .2s; }
    .nav-links a:hover { color: var(--text); text-decoration: none; }

    /* Sections */
    section { max-width: 1100px; margin: 0 auto; padding: 56px 24px; }
    section + section { border-top: 1px solid var(--border); }
    h2 { font-size: 1.5rem; font-weight: 700; margin-bottom: 32px; }

    /* Gallery grid */
    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 20px;
    }
    .card { background: var(--surface); border: 1px solid var(--border); border-radius: var(--radius); overflow: hidden; transition: box-shadow .2s; }
    .card:hover { box-shadow: 0 4px 20px rgba(0,0,0,.12); }
    .card-img { aspect-ratio: 1; background: var(--border); overflow: hidden; }
    .card-img img { width: 100%; height: 100%; object-fit: cover; transition: transform .3s; }
    .card:hover .card-img img { transform: scale(1.04); }
    .no-img { width: 100%; height: 100%; background: var(--bg); }
    .card-body { padding: 12px 14px 14px; }
    .card-title { font-weight: 600; font-size: 0.95rem; margin-bottom: 4px; }
    .card-meta { font-size: 0.78rem; color: var(--muted); margin-bottom: 8px; }
    .sale-badge {
      display: inline-flex; align-items: center;
      background: var(--accent-container); color: var(--accent);
      border: none; border-radius: 20px;
      padding: 4px 12px; font-size: 0.78rem; font-weight: 600;
      cursor: pointer; transition: opacity .2s;
    }
    .sale-badge:hover { opacity: .8; }
    .no-artworks { color: var(--muted); text-align: center; padding: 48px 0; }

    /* Biography */
    .bio-name { font-size: 1.8rem; font-weight: 700; margin-bottom: 20px; }
    .bio-text { max-width: 680px; color: var(--muted); white-space: pre-line; }

    /* Contact section links */
    .contact-items { display: flex; flex-direction: column; gap: 12px; }
    .contact-row { display: flex; align-items: center; gap: 12px; }
    .contact-label { min-width: 120px; font-weight: 600; font-size: 0.9rem; }
    .contact-value { color: var(--muted); font-size: 0.9rem; }

    /* Modal */
    .modal-overlay {
      position: fixed; inset: 0; z-index: 200;
      background: rgba(0,0,0,.5);
      display: flex; align-items: center; justify-content: center;
      padding: 16px;
    }
    .modal-overlay.hidden { display: none; }
    .modal {
      background: var(--surface); border-radius: var(--radius);
      padding: 28px; max-width: 420px; width: 100%;
      box-shadow: 0 8px 32px rgba(0,0,0,.24);
    }
    .modal h3 { font-size: 1rem; font-weight: 600; margin-bottom: 16px; color: var(--muted); }
    .contact-list { list-style: none; display: flex; flex-direction: column; gap: 10px; margin-bottom: 20px; }
    .contact-list li { display: flex; gap: 8px; flex-wrap: wrap; align-items: baseline; }
    .cl { font-weight: 600; font-size: 0.85rem; min-width: 90px; }
    .modal-close {
      width: 100%; padding: 10px;
      background: var(--accent); color: #fff; border: none;
      border-radius: 8px; font-size: 0.95rem; font-weight: 600;
      cursor: pointer; transition: opacity .2s;
    }
    .modal-close:hover { opacity: .85; }

    /* Footer */
    footer { text-align: center; color: var(--muted); font-size: 0.78rem; padding: 24px; border-top: 1px solid var(--border); }

    @media (max-width: 480px) {
      nav { padding: 0 16px; }
      .nav-links { gap: 16px; }
      section { padding: 40px 16px; }
      .grid { grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); gap: 12px; }
    }
  </style>
</head>
<body>
  <nav>
    <span class="nav-brand">${artistName}</span>
    <ul class="nav-links">
      <li><a href="#gallery">${esc(t(lang, "gallery"))}</a></li>
      ${profile?.bio ? `<li><a href="#biography">${esc(t(lang, "biography"))}</a></li>` : ""}
      ${contacts.length > 0 ? `<li><a href="#contact">${esc(t(lang, "contact"))}</a></li>` : ""}
    </ul>
  </nav>

  <section id="gallery">
    <h2>${esc(t(lang, "gallery"))}</h2>
    ${
      artworks.length === 0
        ? `<p class="no-artworks">${esc(t(lang, "noArtworks"))}</p>`
        : `<div class="grid">${(artworks as Record<string, unknown>[]).map(renderArtworkCard).join("")}</div>`
    }
  </section>

  ${
    profile?.bio
      ? `<section id="biography">
    <h2>${esc(t(lang, "biography"))}</h2>
    <p class="bio-name">${artistName}</p>
    <p class="bio-text">${esc(profile.bio as string)}</p>
  </section>`
      : ""
  }

  ${
    contacts.length > 0
      ? `<section id="contact">
    <h2>${esc(t(lang, "contact"))}</h2>
    <div class="contact-items">
      ${contacts
        .map((c) => {
          const valueEl = c.href
            ? `<a href="${esc(c.href)}" target="_blank" rel="noopener noreferrer" class="contact-value">${esc(c.value)}</a>`
            : `<span class="contact-value">${esc(c.value)}</span>`;
          return `<div class="contact-row"><span class="contact-label">${esc(c.label)}</span>${valueEl}</div>`;
        })
        .join("")}
    </div>
  </section>`
      : ""
  }

  <footer>${esc(t(lang, "footer"))}</footer>

  ${renderContactModal()}

  <script>
    const overlay = document.getElementById('modal-overlay');
    const title = document.getElementById('modal-title');
    const closeBtn = document.getElementById('modal-close-btn');
    const inquireLabel = ${JSON.stringify(t(lang, "contactArtist"))};

    function openModal(artworkName) {
      if (!overlay) return;
      title.textContent = artworkName ? artworkName : inquireLabel;
      overlay.classList.remove('hidden');
      document.body.style.overflow = 'hidden';
      closeBtn.focus();
    }

    function closeModal() {
      if (!overlay) return;
      overlay.classList.add('hidden');
      document.body.style.overflow = '';
    }

    if (closeBtn) closeBtn.addEventListener('click', closeModal);
    if (overlay) {
      overlay.addEventListener('click', (e) => {
        if (e.target === overlay) closeModal();
      });
    }
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') closeModal();
    });
  </script>
</body>
</html>`;

  return new Response(html, {
    headers: {
      "content-type": "text/html; charset=utf-8",
      "cache-control": "public, max-age=60, stale-while-revalidate=300",
    },
  });
});
