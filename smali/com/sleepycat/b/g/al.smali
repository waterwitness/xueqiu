.class public Lcom/sleepycat/b/g/al;
.super Ljava/lang/Object;
.source "LogItem.java"


# instance fields
.field public a:Lcom/sleepycat/b/g/a/m;

.field public b:J

.field public c:J

.field public d:J

.field public e:Lcom/sleepycat/b/g/au;

.field public f:Lcom/sleepycat/b/g/av;

.field public g:Lcom/sleepycat/b/g/ae;

.field protected h:Ljava/nio/ByteBuffer;

.field i:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 34
    iput-wide v2, p0, Lcom/sleepycat/b/g/al;->b:J

    .line 42
    iput-wide v2, p0, Lcom/sleepycat/b/g/al;->c:J

    .line 51
    iput-wide v2, p0, Lcom/sleepycat/b/g/al;->d:J

    .line 58
    iput-object v0, p0, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    .line 65
    iput-object v0, p0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 68
    iput-object v0, p0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 69
    iput-object v0, p0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/g/al;->i:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    return-object v0
.end method
