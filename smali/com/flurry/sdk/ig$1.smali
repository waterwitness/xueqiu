.class Lcom/flurry/sdk/ig$1;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ig;
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ig;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ig;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/sdk/ig$1;->a:Lcom/flurry/sdk/ig;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/ig$1;->a:Lcom/flurry/sdk/ig;

    invoke-static {v0}, Lcom/flurry/sdk/ig;->a(Lcom/flurry/sdk/ig;)V

    .line 103
    return-void
.end method
