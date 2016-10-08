.class public Lcom/sleepycat/b/i/e/af;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/p/au;

.field public final b:Lcom/sleepycat/b/p/au;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/sleepycat/b/i/e/af;->c:Lcom/sleepycat/b/i/e/t;

    .line 953
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 954
    iput-object p2, p0, Lcom/sleepycat/b/i/e/af;->a:Lcom/sleepycat/b/p/au;

    .line 955
    iput-object p3, p0, Lcom/sleepycat/b/i/e/af;->b:Lcom/sleepycat/b/p/au;

    .line 956
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 968
    sget-object v0, Lcom/sleepycat/b/i/e/t;->o:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sleepycat/b/i/e/af;->c:Lcom/sleepycat/b/i/e/t;

    .line 1222
    iget v0, v0, Lcom/sleepycat/b/i/h/a;->B:I

    .line 973
    invoke-static {}, Lcom/sleepycat/b/i/e/t;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 974
    :goto_0
    if-eqz v1, :cond_2

    const/16 v0, 0x10

    .line 977
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/af;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 978
    iget-object v2, p0, Lcom/sleepycat/b/i/e/af;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 978
    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 979
    if-eqz v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/sleepycat/b/i/e/af;->b:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 980
    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 982
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 983
    return-object v0

    .line 973
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 974
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " syncupVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/af;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
