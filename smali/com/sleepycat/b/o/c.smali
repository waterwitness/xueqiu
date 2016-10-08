.class public Lcom/sleepycat/b/o/c;
.super Ljava/util/logging/FileHandler;
.source "FileHandler.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/b/o/c;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 87
    new-instance v0, Lcom/sleepycat/b/o/c$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/o/c$1;-><init>(Lcom/sleepycat/b/o/c;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/o/c;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 100
    invoke-virtual {p0, p4}, Lcom/sleepycat/b/o/c;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 3392
    iget-object v0, p5, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 102
    sget-object v1, Lcom/sleepycat/b/b/d;->bp:Lcom/sleepycat/b/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/m;Lcom/sleepycat/b/b/b;Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/o/c;->setLevel(Ljava/util/logging/Level;)V

    .line 107
    return-void
.end method
