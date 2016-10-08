.class final Lcom/pingan/b/a/f$3;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/pingan/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/a/f;->a(Lcom/pingan/b/a/e;)Lcom/pingan/b/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/a/e;

.field final synthetic b:Lcom/pingan/b/a/f;


# direct methods
.method constructor <init>(Lcom/pingan/b/a/f;Lcom/pingan/b/a/e;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/pingan/b/a/f$3;->b:Lcom/pingan/b/a/f;

    iput-object p2, p0, Lcom/pingan/b/a/f$3;->a:Lcom/pingan/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/pingan/b/a/f$3;->a:Lcom/pingan/b/a/e;

    invoke-interface {v0, p1, p2}, Lcom/pingan/b/a/e;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 213
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/pingan/b/a/f$3;->b:Lcom/pingan/b/a/f;

    .line 1023
    iget-object v0, v0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    .line 214
    invoke-interface {v0, p1}, Lcom/pingan/b/a/g;->b(Lcom/pingan/b/a/m;)V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/a/f$3;->b:Lcom/pingan/b/a/f;

    .line 2023
    iget-object v0, v0, Lcom/pingan/b/a/f;->b:Lcom/pingan/b/a/g;

    .line 216
    invoke-interface {v0, p1}, Lcom/pingan/b/a/g;->a(Lcom/pingan/b/a/m;)V

    goto :goto_0
.end method
