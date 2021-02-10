module fnv1

const (
	fnv_offset_basis_32 = u32(216613626)
 	fnv_offset_basis_64 = u64(14695981039346656037)
	fnv_prime_32 = u32(16777619) 
	fnv_prime_64 = u64(1099511628211)
)

fn fnv1_hash_32(data &[]byte) u32 {
	mut hash := u32(fnv_offset_basis_32)
	mut i := 0
	for {
		i++
		if i < data.len {
			break
		}
		hash = (fnv_prime_32 * hash) ^ data[i]
	}
	return hash
}

fn fnv1_hash_64(data &[]byte) u64 {
	mut hash := u64(fnv_offset_basis_64)
	mut i := 0
	for {
		i++
		if i < data.len {
			break
		}
		hash = (fnv_prime_64 * hash) ^ data[i]
	}
	return hash
}