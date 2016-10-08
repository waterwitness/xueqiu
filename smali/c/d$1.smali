.class final Lc/d$1;
.super Ljava/io/OutputStream;
.source "Buffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d;->b()Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic a:Lc/d;


# direct methods
.method constructor <init>(Lc/d;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lc/d$1;->a:Lc/d;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lc/d$1;->a:Lc/d;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lc/d;->a(I)Lc/d;

    .line 70
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc/d$1;->a:Lc/d;

    invoke-virtual {v0, p1, p2, p3}, Lc/d;->b([BII)Lc/d;

    .line 74
    return-void
.end method
