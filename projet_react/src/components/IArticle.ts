
export interface IArticle {
    Id: number;
    Nom:string;
    Description: string;
    Couleur: string;
    Categorie: string;
    Prix: number | null;
    Quantite: number | null;
    Image: string;
}