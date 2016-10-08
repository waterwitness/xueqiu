.class public Lcom/sleepycat/b/i/e/y;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field protected final d:Lcom/sleepycat/b/i/e/k;

.field protected e:Lcom/sleepycat/b/i/e/s;

.field final synthetic f:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V
    .locals 1

    .prologue
    .line 801
    iput-object p1, p0, Lcom/sleepycat/b/i/e/y;->f:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/y;->d:Lcom/sleepycat/b/i/e/k;

    .line 803
    iput-object p2, p0, Lcom/sleepycat/b/i/e/y;->e:Lcom/sleepycat/b/i/e/s;

    .line 804
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lcom/sleepycat/b/i/e/t;->l:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/sleepycat/b/i/e/y;->c()I

    move-result v0

    .line 814
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/y;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 816
    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->f:Lcom/sleepycat/b/i/e/t;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/y;->e:Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/e/s;Ljava/nio/ByteBuffer;)V

    .line 817
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 818
    return-object v0
.end method

.method protected final c()I
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/sleepycat/b/i/e/y;->e:Lcom/sleepycat/b/i/e/s;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->f:Lcom/sleepycat/b/i/e/t;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/t;->c(Lcom/sleepycat/b/i/e/t;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/s;->a(I)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/sleepycat/b/i/e/k;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sleepycat/b/i/e/y;->d:Lcom/sleepycat/b/i/e/k;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    invoke-super {p0}, Lcom/sleepycat/b/i/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->d:Lcom/sleepycat/b/i/e/k;

    if-eqz v1, :cond_0

    .line 843
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->d:Lcom/sleepycat/b/i/e/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->e:Lcom/sleepycat/b/i/e/s;

    if-eqz v1, :cond_1

    .line 848
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v1, p0, Lcom/sleepycat/b/i/e/y;->e:Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
