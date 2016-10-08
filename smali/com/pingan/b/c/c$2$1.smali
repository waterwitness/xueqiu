.class final Lcom/pingan/b/c/c$2$1;
.super Ljava/lang/Object;
.source "FormUploader.java"

# interfaces
.implements Lcom/pingan/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/c/c$2;->a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/c$2;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/c$2;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/pingan/b/c/c$2$1;->a:Lcom/pingan/b/c/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/pingan/b/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/pingan/b/c/c$2$1;->a:Lcom/pingan/b/c/c$2;

    iget-object v0, v0, Lcom/pingan/b/c/c$2;->a:Lcom/pingan/b/c/l;

    iget-object v0, v0, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    iget-object v1, p0, Lcom/pingan/b/c/c$2$1;->a:Lcom/pingan/b/c/c$2;

    iget-object v1, v1, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/pingan/b/c/i;->a(Ljava/lang/String;D)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/pingan/b/c/c$2$1;->a:Lcom/pingan/b/c/c$2;

    iget-object v0, v0, Lcom/pingan/b/c/c$2;->c:Lcom/pingan/b/c/h;

    iget-object v1, p0, Lcom/pingan/b/c/c$2$1;->a:Lcom/pingan/b/c/c$2;

    iget-object v1, v1, Lcom/pingan/b/c/c$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 123
    return-void
.end method
