.class public Lcom/sleepycat/b/i/g/a/b;
.super Ljava/lang/Object;
.source "LDiff.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Lcom/sleepycat/b/i/g/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "usage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sleepycat/b/i/g/a/b;

    .line 1142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1143
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "java { "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | -jar je-<version>.jar "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  -h <dir>[,<dir2>]   # environment home directory\n  [-a]                # analyze diff\n  [-b <blockSize>]    # number of records to put in each block\n  [-m <maxErrors>]    # abort diff after a number of errors\n  [-s <databaseName>,<databaseName>] # database(s) to compare\n  [-q]                # be quiet, do not print to stdout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/i/g/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/g/a/d;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/b;->a:Lcom/sleepycat/b/i/g/a/d;

    .line 204
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/g/a/b;)Lcom/sleepycat/b/i/g/a/d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/b;->a:Lcom/sleepycat/b/i/g/a/d;

    return-object v0
.end method
