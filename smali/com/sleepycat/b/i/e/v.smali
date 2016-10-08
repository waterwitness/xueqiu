.class public Lcom/sleepycat/b/i/e/v;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/e/k;

.field final synthetic b:Lcom/sleepycat/b/i/e/t;

.field private c:Lcom/sleepycat/b/i/e/s;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    iput-object p1, p0, Lcom/sleepycat/b/i/e/v;->b:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 1214
    iput-object v0, p0, Lcom/sleepycat/b/i/e/v;->c:Lcom/sleepycat/b/i/e/s;

    .line 1217
    iput-object v0, p0, Lcom/sleepycat/b/i/e/v;->a:Lcom/sleepycat/b/i/e/k;

    .line 1218
    iput-object p2, p0, Lcom/sleepycat/b/i/e/v;->c:Lcom/sleepycat/b/i/e/s;

    .line 1219
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1223
    sget-object v0, Lcom/sleepycat/b/i/e/t;->t:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/sleepycat/b/i/e/v;->c:Lcom/sleepycat/b/i/e/s;

    iget-object v1, p0, Lcom/sleepycat/b/i/e/v;->b:Lcom/sleepycat/b/i/e/t;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/t;->c(Lcom/sleepycat/b/i/e/t;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/s;->a(I)I

    move-result v0

    .line 1229
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/v;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1231
    iget-object v1, p0, Lcom/sleepycat/b/i/e/v;->b:Lcom/sleepycat/b/i/e/t;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/v;->c:Lcom/sleepycat/b/i/e/s;

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/e/s;Ljava/nio/ByteBuffer;)V

    .line 1232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1233
    return-object v0
.end method
