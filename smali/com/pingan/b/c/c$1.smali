.class final Lcom/pingan/b/c/c$1;
.super Ljava/lang/Object;
.source "FormUploader.java"

# interfaces
.implements Lcom/pingan/b/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingan/b/c/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/l;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/l;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/pingan/b/c/c$1;->a:Lcom/pingan/b/c/l;

    iput-object p2, p0, Lcom/pingan/b/c/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .prologue
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 93
    int-to-double v2, p1

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 94
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/pingan/b/c/c$1;->a:Lcom/pingan/b/c/l;

    iget-object v2, v2, Lcom/pingan/b/c/l;->b:Lcom/pingan/b/c/i;

    iget-object v3, p0, Lcom/pingan/b/c/c$1;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Lcom/pingan/b/c/i;->a(Ljava/lang/String;D)V

    .line 98
    return-void

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method
