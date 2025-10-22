<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\KmsProviders\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class KmsProviderDto {
    public function __construct(
        public readonly ?int $id,
        public readonly string $name,
        public readonly string $provider,
        public readonly ?string $location,
        public readonly ?string $projectTenant,
        public readonly \DateTimeImmutable $createdAt,
        public readonly bool $isEnabled
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
