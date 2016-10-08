.class Lcom/flurry/sdk/jr$3;
.super Lcom/flurry/sdk/ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jr;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jr;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/sdk/jr$3;->a:Lcom/flurry/sdk/jr;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/flurry/sdk/jj;->a()Lcom/flurry/sdk/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jj;->c()V

    .line 97
    return-void
.end method
