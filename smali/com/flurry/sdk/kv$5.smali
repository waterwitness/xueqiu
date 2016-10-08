.class Lcom/flurry/sdk/kv$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/le;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kv;->h(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/le",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/flurry/sdk/kw;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kv;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kv;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/flurry/sdk/kv$5;->a:Lcom/flurry/sdk/kv;

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
            "Lcom/flurry/sdk/kw;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lcom/flurry/sdk/la;

    new-instance v1, Lcom/flurry/sdk/kw$a;

    invoke-direct {v1}, Lcom/flurry/sdk/kw$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/la;-><init>(Lcom/flurry/sdk/lb;)V

    return-object v0
.end method
