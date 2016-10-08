.class public Lcom/sleepycat/b/i/c/a/l;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/a/d;

.field private final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/d;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/l;->a:Lcom/sleepycat/b/i/c/a/d;

    .line 192
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 193
    iput-object p2, p0, Lcom/sleepycat/b/i/c/a/l;->b:[Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/l;->a:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->d:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/l;->b:[Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/l;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
