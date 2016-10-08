.class public Lcom/sleepycat/b/g/j;
.super Ljava/lang/Object;
.source "FileHandle.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field a:Ljava/io/RandomAccessFile;

.field b:Lcom/sleepycat/b/f/a;

.field public c:I

.field d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sleepycat/b/g/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/j;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sleepycat/b/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fileHandle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    .line 31
    iput-wide p1, p0, Lcom/sleepycat/b/g/j;->d:J

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    .line 75
    return-void
.end method

.method final a(Ljava/io/RandomAccessFile;I)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/sleepycat/b/g/j;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 40
    iput p2, p0, Lcom/sleepycat/b/g/j;->c:I

    .line 41
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iput-object v1, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 87
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    throw v0
.end method
