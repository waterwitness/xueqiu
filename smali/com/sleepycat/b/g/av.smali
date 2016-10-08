.class public Lcom/sleepycat/b/g/av;
.super Ljava/lang/Object;
.source "ReplicationContext.java"


# static fields
.field public static final f:Lcom/sleepycat/b/g/av;

.field public static final g:Lcom/sleepycat/b/g/av;


# instance fields
.field public final h:Z

.field final i:Lcom/sleepycat/b/p/au;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/sleepycat/b/g/av;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/av;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/b/g/av;->f:Lcom/sleepycat/b/g/av;

    .line 57
    new-instance v0, Lcom/sleepycat/b/g/av;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/av;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/au;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/av;->h:Z

    .line 83
    iput-object p1, p0, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/au;B)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/g/av;->h:Z

    .line 92
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean p1, p0, Lcom/sleepycat/b/g/av;->h:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    .line 75
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/g/a/f;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sleepycat/b/g/av;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v1, "inRepStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/b/g/av;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "clientVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
