.class public final enum Lcom/android/volley/o;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/volley/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/volley/o;

.field public static final enum b:Lcom/android/volley/o;

.field public static final enum c:Lcom/android/volley/o;

.field public static final enum d:Lcom/android/volley/o;

.field private static final synthetic e:[Lcom/android/volley/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    new-instance v0, Lcom/android/volley/o;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/android/volley/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/o;->a:Lcom/android/volley/o;

    .line 498
    new-instance v0, Lcom/android/volley/o;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/volley/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/o;->b:Lcom/android/volley/o;

    .line 499
    new-instance v0, Lcom/android/volley/o;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/android/volley/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    .line 500
    new-instance v0, Lcom/android/volley/o;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/android/volley/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/o;->d:Lcom/android/volley/o;

    .line 496
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/volley/o;

    sget-object v1, Lcom/android/volley/o;->a:Lcom/android/volley/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/volley/o;->b:Lcom/android/volley/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/volley/o;->d:Lcom/android/volley/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/volley/o;->e:[Lcom/android/volley/o;

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
    .line 496
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/o;
    .locals 1

    .prologue
    .line 496
    const-class v0, Lcom/android/volley/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/volley/o;

    return-object v0
.end method

.method public static values()[Lcom/android/volley/o;
    .locals 1

    .prologue
    .line 496
    sget-object v0, Lcom/android/volley/o;->e:[Lcom/android/volley/o;

    invoke-virtual {v0}, [Lcom/android/volley/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/o;

    return-object v0
.end method
