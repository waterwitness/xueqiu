.class Lcom/flurry/sdk/im$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/im;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/flurry/sdk/im$5;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()Ljava/util/List;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/flurry/sdk/im;->d:Lcom/flurry/sdk/jz;

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Lcom/flurry/sdk/im;->f()V

    .line 327
    :cond_0
    sget-object v1, Lcom/flurry/sdk/im;->d:Lcom/flurry/sdk/jz;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V

    .line 328
    return-void
.end method
