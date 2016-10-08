.class Lcom/flurry/sdk/jb$11;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/flurry/sdk/jb$11;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/flurry/sdk/hl;->a()Lcom/flurry/sdk/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hl;->c()Lcom/flurry/sdk/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ig;->b()V

    .line 248
    return-void
.end method
