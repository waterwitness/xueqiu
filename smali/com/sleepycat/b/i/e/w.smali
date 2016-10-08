.class public Lcom/sleepycat/b/i/e/w;
.super Lcom/sleepycat/b/i/e/y;
.source "Protocol.java"


# instance fields
.field public final a:Z

.field public final b:Lcom/sleepycat/b/w;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;ZLcom/sleepycat/b/w;Lcom/sleepycat/b/i/e/s;)V
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/sleepycat/b/i/e/w;->c:Lcom/sleepycat/b/i/e/t;

    .line 1056
    invoke-direct {p0, p1, p4}, Lcom/sleepycat/b/i/e/y;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V

    .line 1057
    iput-boolean p2, p0, Lcom/sleepycat/b/i/e/w;->a:Z

    .line 1058
    iput-object p3, p0, Lcom/sleepycat/b/i/e/w;->b:Lcom/sleepycat/b/w;

    .line 1059
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/sleepycat/b/i/e/t;->p:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/sleepycat/b/i/e/y;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 1071
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/w;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1073
    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/w;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v0, p0, Lcom/sleepycat/b/i/e/w;->b:Lcom/sleepycat/b/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/w;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1075
    iget-object v0, p0, Lcom/sleepycat/b/i/e/w;->c:Lcom/sleepycat/b/i/e/t;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/w;->e:Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/e/s;Ljava/nio/ByteBuffer;)V

    .line 1076
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1077
    return-object v1

    .line 1073
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
