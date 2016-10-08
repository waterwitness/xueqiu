.class Lcom/flurry/sdk/ii$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ii;->a()Lcom/flurry/sdk/jz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/ij;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ii;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ii;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/ii$1;->a:Lcom/flurry/sdk/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/sdk/lb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lb",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/ij$a;

    invoke-direct {v1}, Lcom/flurry/sdk/ij$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    return-object v0
.end method
