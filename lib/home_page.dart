import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_hero/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            pinned: true,
            floating: true,
            expandedHeight: 65,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 50, bottom: 16),
              title: const Text(
                'NOIR',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 3.0,
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.shopping_bag_outlined,
                    color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.grey[900]!,
                        Colors.black,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: -20,
                        top: -20,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[800]!.withOpacity(0.2),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -50,
                        bottom: -50,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[800]!.withOpacity(0.1),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 60.0, left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'The Finest Shirts',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Discover our exclusive selection',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[300],
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      _buildCategoryChip('All', isSelected: true),
                      _buildCategoryChip('T-Shirts'),
                      _buildCategoryChip('Dress Shirts'),
                      _buildCategoryChip('Polos'),
                      _buildCategoryChip('Casual'),
                      _buildCategoryChip('Formal'),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                _buildSectionHeader('Featured Collection'),
                const SizedBox(height: 16),
                _buildProductList([
                  const ProductCard(
                    id: '1',
                    image:
                        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fHNoaXJ0c3xlbnwwfHwwfHx8MA%3D%3D',
                    title: 'Oxford Premium Shirt',
                    price: '\$89.99',
                    description:
                        'Luxurious Oxford shirt with premium cotton construction.',
                  ),
                  const ProductCard(
                    id: '2',
                    image:
                        'https://images.unsplash.com/photo-1671438118097-479e63198629?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA0fHxzaGlydHN8ZW58MHx8MHx8fDA%3D',
                    title: 'Noir Essential Tee',
                    price: '\$45.99',
                    description:
                        'Ultra-soft premium cotton t-shirt crafted from the finest Egyptian cotton.',
                  ),
                  const ProductCard(
                    id: '3',
                    image:
                        'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8c2hpcnRzfGVufDB8fDB8fHww',
                    title: 'Striped Linen Shirt',
                    price: '\$72.99',
                    description:
                        'Breathable pure linen shirt with vertical stripes.',
                  ),
                  const ProductCard(
                    id: '4',
                    image:
                        'https://images.unsplash.com/photo-1621773881532-fe65715b5137?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI4fHxzaGlydHN8ZW58MHx8MHx8fDA%3D',
                    title: 'Denim Signature Shirt',
                    price: '\$79.99',
                    description:
                        'Premium Japanese denim shirt with mother-of-pearl buttons.',
                  ),
                ]),
                const SizedBox(height: 30),
                _buildBanner(),
                const SizedBox(height: 30),
                _buildSectionHeader('New Arrivals'),
                const SizedBox(height: 16),
                _buildProductList([
                  const ProductCard(
                    id: '5',
                    image:
                        'https://images.unsplash.com/photo-1602810320073-1230c46d89d4?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hpcnRzfGVufDB8fDB8fHww',
                    title: 'Minimalist Collared Shirt',
                    price: '\$69.99',
                    description:
                        'Contemporary minimalist design with premium Italian cotton.',
                  ),
                  const ProductCard(
                    id: '6',
                    image:
                        'https://images.unsplash.com/photo-1585487000160-6ebcfceb0d03',
                    title: 'Limited Edition Print Tee',
                    price: '\$55.99',
                    description:
                        'Artist collaboration series featuring original artwork.',
                  ),
                  const ProductCard(
                    id: '7',
                    image:
                        'https://images.unsplash.com/photo-1603252109360-909baaf261c7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzl8fHNoaXJ0c3xlbnwwfHwwfHx8MA%3D%3D',
                    title: 'Highlands Flannel Shirt',
                    price: '\$62.99',
                    description:
                        'Heavyweight brushed cotton flannel sourced from Scottish mills.',
                  ),
                  const ProductCard(
                    id: '8',
                    image:
                        'https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fHNoaXJ0c3xlbnwwfHwwfHx8MA%3D%3D',
                    title: 'Vintage Wash Urban Tee',
                    price: '\$49.99',
                    description: 'Stone-washed for that perfect lived-in feel.',
                  ),
                ]),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label, {bool isSelected = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Chip(
        backgroundColor: isSelected ? Colors.white : Colors.grey[900],
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[300],
              letterSpacing: 1.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'View All',
              style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList(List<ProductCard> products) {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: products,
      ),
    );
  }

  Widget _buildBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.grey[900]!, Colors.grey[800]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1542060748-10c28b62716f',
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SEASONAL COLLECTION',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '25% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'SHOP NOW',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
