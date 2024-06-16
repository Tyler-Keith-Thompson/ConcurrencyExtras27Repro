import Testing
import ConcurrencyExtras
@testable import ConcurrencyExtras27Repro

struct Repro {
    @Test func example() async throws {
        await withMainSerialExecutor {
            await confirmation { exp in
                exp()
            }
        }
    }
}
