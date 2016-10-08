.class Lcom/flurry/sdk/jb$3;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jb;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jb;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/flurry/sdk/jb$3;->a:Lcom/flurry/sdk/jb;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/flurry/sdk/jb$3;->a:Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/jb;->e(Lcom/flurry/sdk/jb;)V

    .line 339
    return-void
.end method
