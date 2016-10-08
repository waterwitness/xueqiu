.class public Lcom/sleepycat/b/o/a;
.super Ljava/util/logging/ConsoleHandler;
.source "ConsoleHandler.java"


# direct methods
.method public constructor <init>(Ljava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/o/a;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz p2, :cond_0

    .line 3392
    iget-object v1, p2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 51
    sget-object v2, Lcom/sleepycat/b/b/d;->bo:Lcom/sleepycat/b/b/b;

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/m;Lcom/sleepycat/b/b/b;Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/o/a;->setLevel(Ljava/util/logging/Level;)V

    .line 66
    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    goto :goto_0
.end method
