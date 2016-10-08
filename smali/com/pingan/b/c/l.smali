.class public final Lcom/pingan/b/c/l;
.super Ljava/lang/Object;
.source "UploadOptions.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/pingan/b/c/i;

.field final c:Lcom/pingan/b/c/g;


# direct methods
.method public constructor <init>(Lcom/pingan/b/c/i;Lcom/pingan/b/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pingan/b/c/i;",
            "Lcom/pingan/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/pingan/b/c/l;->a:Ljava/util/Map;

    .line 43
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    .line 49
    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lcom/pingan/b/c/l;->c:Lcom/pingan/b/c/g;

    .line 55
    return-void

    .line 43
    :cond_0
    new-instance p1, Lcom/pingan/b/c/l$1;

    invoke-direct {p1, p0}, Lcom/pingan/b/c/l$1;-><init>(Lcom/pingan/b/c/l;)V

    goto :goto_0

    .line 49
    :cond_1
    new-instance p2, Lcom/pingan/b/c/l$2;

    invoke-direct {p2, p0}, Lcom/pingan/b/c/l$2;-><init>(Lcom/pingan/b/c/l;)V

    goto :goto_1
.end method
