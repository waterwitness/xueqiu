.class final Lcom/pingan/b/c/k$1;
.super Ljava/lang/Object;
.source "UploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/b/c/k;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/h;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pingan/b/a/m;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/h;Ljava/lang/String;Lcom/pingan/b/a/m;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pingan/b/c/k$1;->a:Lcom/pingan/b/c/h;

    iput-object p2, p0, Lcom/pingan/b/c/k$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/pingan/b/c/k$1;->c:Lcom/pingan/b/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pingan/b/c/k$1;->a:Lcom/pingan/b/c/h;

    iget-object v1, p0, Lcom/pingan/b/c/k$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/pingan/b/c/k$1;->c:Lcom/pingan/b/a/m;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 60
    return-void
.end method
