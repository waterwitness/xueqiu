.class Lcom/flurry/sdk/lh$4;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lh;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lf;

.field final synthetic b:Lcom/flurry/sdk/lh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lh;Lcom/flurry/sdk/lf;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/flurry/sdk/lh$4;->b:Lcom/flurry/sdk/lh;

    iput-object p2, p0, Lcom/flurry/sdk/lh$4;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/flurry/sdk/lh$4;->b:Lcom/flurry/sdk/lh;

    iget-object v1, p0, Lcom/flurry/sdk/lh$4;->a:Lcom/flurry/sdk/lf;

    invoke-static {v0, v1}, Lcom/flurry/sdk/lh;->a(Lcom/flurry/sdk/lh;Lcom/flurry/sdk/lf;)V

    .line 316
    return-void
.end method
