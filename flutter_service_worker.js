'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "1c3f6ddaf6e5f468a61eef40099efcc1",
"index.html": "fed79e12cd19e8ca62f30b803307fc56",
"/": "fed79e12cd19e8ca62f30b803307fc56",
"main.dart.js": "15d7ab4d227d09bb89e45c6ffdb4485d",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "11acc1fc5da2e8bbd448aab643777bf7",
"assets/res/images/jaineel.png": "52bd19b53e695d25105504148c696407",
"assets/res/images/tic_tac_toe.png": "98facb6e135568c48c61b6d0bfaa684d",
"assets/res/images/planit.png": "cfbb3d41588a12191206206796a06015",
"assets/res/images/covid_vaccine_slot_tracker.png": "aaea1dc60b0ce34b4746c3de4eaa9add",
"assets/res/images/nutri_chef.png": "4cb199f4ab62c389c00224f919635ad1",
"assets/res/images/promptopia.png": "d05e7e8230e546df1c79afaddc0ead53",
"assets/res/icons/figma_logo.svg": "662c187722530db5ea059436d9164bf6",
"assets/res/icons/azure_logo.svg": "0668914f49f2b6800d13c8f662152e45",
"assets/res/icons/aza_logo.svg": "8daedf047e6bfb2d377bae1b3677ebed",
"assets/res/icons/react_logo.svg": "f065d8a6ba3262dbba3c32583f4839d9",
"assets/res/icons/html5_logo.svg": "baf0bbb17ed5f98f53da20f89663df1c",
"assets/res/icons/projects.svg": "f7dbc792c72d98b7085cc72281067a1a",
"assets/res/icons/javascript_logo.svg": "bc310a3ad0457bca142f11d007279238",
"assets/res/icons/flutter_logo.svg": "8b9edb185604eb530cc1726481b552eb",
"assets/res/icons/java_logo.svg": "21a98b4b5c1274d06d4e20bbb8a0a759",
"assets/res/icons/tcs_logo.svg": "e503a5233a0fe7e1ddb0b651bf33034f",
"assets/res/icons/git_logo.svg": "6125edbfc67f503efdea7a3176d3c53c",
"assets/res/icons/css3_logo.svg": "3d6f6923b3e7d7abddc39219ed3792d6",
"assets/res/icons/azure_devops_logo.svg": "49f3558071df31a5cb0b16eb12ae753e",
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
"assets/AssetManifest.json": "c7260b17cd471cd9d92d54091004e024",
"assets/NOTICES": "6057ea91bb00b3e4e8fda1f49feadf27",
"assets/FontManifest.json": "60c9dddc378c86165f9d0b6ef06ce727",
"assets/AssetManifest.bin.json": "997e72fe54dd95ba18d414a560a3a6da",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "3759b2f7a51e83c64a58cfe07b96a8ee",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/eva_icons_flutter/lib/fonts/Eva-Icons.ttf": "b3cfd6832181cbaa3c98988c49d34641",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "48f8360220fd24c448f5b86b17d99e4b",
"assets/fonts/MaterialIcons-Regular.otf": "98f8a0ec9fb8add2a48e7eabe8521c8a",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
