.class public Lcom/sleepycat/b/i/c/a/g;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/a/d;

.field private final b:I

.field private final c:Lcom/sleepycat/b/p/au;

.field private final d:Lcom/sleepycat/b/p/au;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/d;ILcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/g;->a:Lcom/sleepycat/b/i/c/a/d;

    .line 133
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 134
    iput p2, p0, Lcom/sleepycat/b/i/c/a/g;->b:I

    .line 135
    iput-object p3, p0, Lcom/sleepycat/b/i/c/a/g;->c:Lcom/sleepycat/b/p/au;

    .line 136
    iput-object p4, p0, Lcom/sleepycat/b/i/c/a/g;->d:Lcom/sleepycat/b/p/au;

    .line 137
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/g;->a:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->b:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sleepycat/b/i/c/a/g;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/g;->c:Lcom/sleepycat/b/p/au;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/g;->d:Lcom/sleepycat/b/p/au;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/g;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
