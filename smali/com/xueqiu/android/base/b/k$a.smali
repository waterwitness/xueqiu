.class final Lcom/xueqiu/android/base/b/k$a;
.super Ljava/io/FilterOutputStream;
.source "ProgressiveEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/k;->writeTo(Ljava/io/OutputStream;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/k;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/b/k;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/xueqiu/android/base/b/k$a;->a:Lcom/xueqiu/android/base/b/k;

    .line 76
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 100
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 96
    return-void
.end method

.method public final write(I)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->a:Lcom/xueqiu/android/base/b/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/k;->a(I)V

    .line 82
    return-void
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->a:Lcom/xueqiu/android/base/b/k;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/k;->a(I)V

    .line 87
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iget-object v0, p0, Lcom/xueqiu/android/base/b/k$a;->a:Lcom/xueqiu/android/base/b/k;

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/base/b/k;->a(I)V

    .line 92
    return-void
.end method
