.class final Lcom/pingan/a/a/g$1;
.super Ljava/lang/Object;
.source "UploadUtil.java"

# interfaces
.implements Lcom/pingan/b/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/a/a/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/a/a/g;


# direct methods
.method constructor <init>(Lcom/pingan/a/a/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pingan/a/a/g$1;->a:Lcom/pingan/a/a/g;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 4

    .prologue
    .line 111
    const-string v0, "UploadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "progress--s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pingan/a/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
