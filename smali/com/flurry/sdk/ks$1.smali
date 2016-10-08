.class Lcom/flurry/sdk/ks$1;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ks;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ks;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ks;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/ks$1;->a:Lcom/flurry/sdk/ks;

    invoke-static {v0}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)V

    .line 39
    return-void
.end method
