.class Lcom/flurry/sdk/kt$4;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kt;->a(Lcom/flurry/sdk/kt$a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kt$a;

.field final synthetic b:Lcom/flurry/sdk/kt;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kt;Lcom/flurry/sdk/kt$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/sdk/kt$4;->b:Lcom/flurry/sdk/kt;

    iput-object p2, p0, Lcom/flurry/sdk/kt$4;->a:Lcom/flurry/sdk/kt$a;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/sdk/kt$4;->b:Lcom/flurry/sdk/kt;

    invoke-virtual {v0}, Lcom/flurry/sdk/kt;->g()V

    .line 130
    iget-object v0, p0, Lcom/flurry/sdk/kt$4;->a:Lcom/flurry/sdk/kt$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/kt$4;->a:Lcom/flurry/sdk/kt$a;

    invoke-interface {v0}, Lcom/flurry/sdk/kt$a;->a()V

    .line 133
    :cond_0
    return-void
.end method
