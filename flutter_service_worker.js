'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "e8327dff84c229737ec3fa1a467f5246",
"version.json": "1c3f6ddaf6e5f468a61eef40099efcc1",
"favicon.ico": "ea6c45968b034a1e65fceabd4e868dae",
"index.html": "33f12907738f341a53d41dad6a097166",
"/": "33f12907738f341a53d41dad6a097166",
"main.dart.js": "2861d881284c8bf0b422b71b38c47369",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.mjs": "3b4623fca46e737087f0b70ec4e23236",
"icons/favicon-16x16.png": "d1c7f8d1dfa47aaf855d3587537a83ef",
"icons/apple-icon.png": "ea2bf62ef9a04a7c09618e36775da5b7",
"icons/apple-icon-144x144.png": "207ef84193b857466cea4577450f8079",
"icons/android-icon-192x192.png": "c5f1075d8468bf7b16ba94840b792c7f",
"icons/apple-icon-precomposed.png": "ea2bf62ef9a04a7c09618e36775da5b7",
"icons/apple-icon-114x114.png": "9386fb2afd6c2838747310190b45cbe6",
"icons/ms-icon-310x310.png": "c638756f1c645bcc4c9724b55c59eb02",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/ms-icon-144x144.png": "207ef84193b857466cea4577450f8079",
"icons/apple-icon-57x57.png": "9a059aa3f022a87fdc36cc99c3892564",
"icons/apple-icon-152x152.png": "e309c25577b22d1ee8e0e362a014e8c0",
"icons/ms-icon-150x150.png": "3f9c130570f526dfe01650bd7a007ba0",
"icons/android-icon-72x72.png": "a60df54c9a4a84a9acb7195311093811",
"icons/android-icon-96x96.png": "c897f26d52407f02f454ef21f940f8b0",
"icons/android-icon-36x36.png": "527d3f4dc3da24ab55a966e112fba6b4",
"icons/apple-icon-180x180.png": "fc65734a9542ee6dbecdaa3b488e97a0",
"icons/favicon-96x96.png": "c897f26d52407f02f454ef21f940f8b0",
"icons/android-icon-48x48.png": "16a98a5888e597936f504449da1a2a9c",
"icons/apple-icon-76x76.png": "0dc9aa79622c27dc4c61b1f49b9d4646",
"icons/apple-icon-60x60.png": "1f00f853268eb778d8ab1db4bb5dbb65",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/android-icon-144x144.png": "207ef84193b857466cea4577450f8079",
"icons/apple-icon-72x72.png": "a60df54c9a4a84a9acb7195311093811",
"icons/apple-icon-120x120.png": "dcd9f35cb05473bb06178b1b3367e3d7",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/favicon-32x32.png": "cc97f5dc110d709edc0850dbbd8aa232",
"icons/ms-icon-70x70.png": "d7050ea44faad3e282c04e3c21915bca",
"manifest.json": "11acc1fc5da2e8bbd448aab643777bf7",
"main.dart.wasm": "3b52359c9e3525c25b2142922c7ca252",
"assets/res/images/jaineel.png": "52bd19b53e695d25105504148c696407",
"assets/res/images/tic_tac_toe.png": "98facb6e135568c48c61b6d0bfaa684d",
"assets/res/images/planit.png": "cfbb3d41588a12191206206796a06015",
"assets/res/images/covid_vaccine_slot_tracker.png": "aaea1dc60b0ce34b4746c3de4eaa9add",
"assets/res/images/nutri_chef.png": "4cb199f4ab62c389c00224f919635ad1",
"assets/res/images/promptopia.png": "d05e7e8230e546df1c79afaddc0ead53",
"assets/res/images/built_with_flutter.png": "680596443602745483f66870e07d7e94",
"assets/res/icons/figma_logo.svg": "662c187722530db5ea059436d9164bf6",
"assets/res/icons/azure_logo.svg": "0668914f49f2b6800d13c8f662152e45",
"assets/res/icons/aza_logo.svg": "8daedf047e6bfb2d377bae1b3677ebed",
"assets/res/icons/react_logo.svg": "f065d8a6ba3262dbba3c32583f4839d9",
"assets/res/icons/html5_logo.svg": "baf0bbb17ed5f98f53da20f89663df1c",
"assets/res/icons/projects.svg": "f7dbc792c72d98b7085cc72281067a1a",
"assets/res/icons/javascript_logo.svg": "bc310a3ad0457bca142f11d007279238",
"assets/res/icons/flutter_logo.svg": "12257ea4a2d54e253b9093c57fe29254",
"assets/res/icons/vue_logo.svg": "a98038bd63c0bba0eeb16f2e1bff0a87",
"assets/res/icons/java_logo.svg": "21a98b4b5c1274d06d4e20bbb8a0a759",
"assets/res/icons/tcs_logo.svg": "e503a5233a0fe7e1ddb0b651bf33034f",
"assets/res/icons/git_logo.svg": "f572ad646e5da625329e26a2e0a1336d",
"assets/res/icons/nuxt_logo.svg": "a95b9e0436cbf22e323836488595738a",
"assets/res/icons/css3_logo.svg": "3d6f6923b3e7d7abddc39219ed3792d6",
"assets/res/icons/azure_devops_logo.svg": "49f3558071df31a5cb0b16eb12ae753e",
"assets/res/icons/harmoney_logo.svg": "6f58007d4db11b14554004fb63dfadb7",
"assets/res/icons/play_store.svg": "a6555a9326feec2527a602e50db5e117",
"assets/res/icons/kotlin_logo.svg": "b38447e0488e22e47fd77f627ef7ed09",
"assets/res/icons/nextjs_logo.svg": "80566f7629d5bcae2cf20cf97d4c8b8b",
"assets/res/icons/powerplay_logo.svg": "0c60995c2bf1e41724153b4b9ffd75aa",
"assets/res/icons/dart_logo.svg": "cb45c78924305618c1de017bcfe08f31",
"assets/res/fonts/Inter-Medium.ttf": "a473e623af12065b4b9cb8db4068fb9c",
"assets/res/fonts/Inter-Light.ttf": "ff5fdc6f42c720a3ebd7b60f6d605888",
"assets/res/fonts/Inter-Thin.ttf": "b97f16379b4c106616f60f702733f5c6",
"assets/res/fonts/Inter-Bold.ttf": "8f2869a84ad71f156a17bb66611ebe22",
"assets/res/fonts/Inter-Regular.ttf": "fdb50e0d48cdcf775fa1ac0dc3c33bd4",
"assets/res/fonts/Inter-LightItalic.ttf": "4b1ffad3c0075af22674765ff1ee2f56",
"assets/res/fonts/Inter-ThinItalic.ttf": "12ec66b825b504d752e8c333bf81dacf",
"assets/res/fonts/Inter-BoldItalic.ttf": "c4c47e3d7ed51a6bb67b7b8088a4b0e3",
"assets/res/fonts/Inter-MediumItalic.ttf": "9a21378c7e8b26bc0c894402bfd5108c",
"assets/res/fonts/Inter-Italic.ttf": "118abbe34a2979b66d6838805c56b7cd",
"assets/AssetManifest.json": "1f3618b2d9e8fea858e0d9c2b23cbbc6",
"assets/NOTICES": "f8ed8582a26f565e466e2fbdec2c404f",
"assets/lottie_loader.json": "9cc644f83030f763c21f294b1d0c9741",
"assets/FontManifest.json": "60c9dddc378c86165f9d0b6ef06ce727",
"assets/AssetManifest.bin.json": "30d44cdd1d851bc22f78a6864f8524e4",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "3759b2f7a51e83c64a58cfe07b96a8ee",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/eva_icons_flutter/lib/fonts/Eva-Icons.ttf": "b3cfd6832181cbaa3c98988c49d34641",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "742e9aea45e71199d9ad6d78a8022490",
"assets/fonts/MaterialIcons-Regular.otf": "40d6fe4f06aee725722f324aed5a56c4",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
