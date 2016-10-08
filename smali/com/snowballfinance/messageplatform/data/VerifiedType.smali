.class public final enum Lcom/snowballfinance/messageplatform/data/VerifiedType;
.super Ljava/lang/Enum;
.source "VerifiedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/VerifiedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/VerifiedType;

.field public static final enum DEFAULT:Lcom/snowballfinance/messageplatform/data/VerifiedType;

.field public static final enum DEFAULT0:Lcom/snowballfinance/messageplatform/data/VerifiedType;

.field public static final enum PROFESSIONAL:Lcom/snowballfinance/messageplatform/data/VerifiedType;

.field public static final enum REPRESENTATIVE:Lcom/snowballfinance/messageplatform/data/VerifiedType;

.field public static final enum STAFF:Lcom/snowballfinance/messageplatform/data/VerifiedType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    const-string v1, "DEFAULT0"

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/VerifiedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->DEFAULT0:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/VerifiedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->DEFAULT:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    const-string v1, "PROFESSIONAL"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/VerifiedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->PROFESSIONAL:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    const-string v1, "REPRESENTATIVE"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/VerifiedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->REPRESENTATIVE:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    const-string v1, "STAFF"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/VerifiedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->STAFF:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/VerifiedType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/VerifiedType;->DEFAULT0:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowballfinance/messageplatform/data/VerifiedType;->DEFAULT:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/VerifiedType;->PROFESSIONAL:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/VerifiedType;->REPRESENTATIVE:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/VerifiedType;->STAFF:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/VerifiedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/VerifiedType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/VerifiedType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snowballfinance/messageplatform/data/VerifiedType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/VerifiedType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/VerifiedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/VerifiedType;

    return-object v0
.end method
