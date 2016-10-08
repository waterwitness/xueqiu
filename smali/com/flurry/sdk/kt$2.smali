.class Lcom/flurry/sdk/kt$2;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/kt$2;->b:Lcom/flurry/sdk/kt;

    iput-object p2, p0, Lcom/flurry/sdk/kt$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/kt$2;->b:Lcom/flurry/sdk/kt;

    new-instance v1, Lcom/flurry/sdk/kv;

    iget-object v2, p0, Lcom/flurry/sdk/kt$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/kv;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/kt;->c:Lcom/flurry/sdk/kv;

    .line 68
    return-void
.end method
