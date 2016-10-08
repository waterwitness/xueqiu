.class public Lcom/sleepycat/b/l/ap;
.super Lcom/sleepycat/b/l/y;
.source "VersionedLN.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sleepycat/b/l/y;-><init>()V

    .line 30
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 30
    iput-wide v0, p0, Lcom/sleepycat/b/l/ap;->a:J

    .line 33
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/y;-><init>(Lcom/sleepycat/b/m;)V

    .line 30
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 3101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 30
    iput-wide v0, p0, Lcom/sleepycat/b/l/ap;->a:J

    .line 41
    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/y;-><init>([B)V

    .line 30
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 30
    iput-wide v0, p0, Lcom/sleepycat/b/l/ap;->a:J

    .line 37
    return-void
.end method


# virtual methods
.method public final b(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/sleepycat/b/l/ap;->a:J

    .line 56
    return-void
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/sleepycat/b/l/ap;->a:J

    return-wide v0
.end method

.method public final v_()J
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v0

    sget v2, Lcom/sleepycat/b/c/ao;->u:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
