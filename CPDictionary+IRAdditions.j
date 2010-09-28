//	CPDictionary+IRAdditions.j
//	Evadne Wu at Iridia, 2010
	
	
	
	
	
@implementation CPDictionary (IRAdditions)

- (void) moveObjectFromKey:(id)fromKey toKey:(id)toKey {
	
	if (![self containsKey:fromKey]) return;
	if ([fromKey isEqual:toKey]) return;
	
	var object = [self objectForKey:fromKey];
	[self setObject:object forKey:toKey];
	[self removeObjectForKey:fromKey];
	
}

@end