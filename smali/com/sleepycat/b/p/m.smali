.class public final Lcom/sleepycat/b/p/m;
.super Ljava/util/logging/ConsoleHandler;
.source "FormatterRedirectHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sleepycat/b/o/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".level"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/p/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 36
    sget-object v0, Lcom/sleepycat/b/p/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/m;->setLevel(Ljava/util/logging/Level;)V

    .line 38
    return-void

    .line 37
    :cond_0
    invoke-static {v0}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/sleepycat/b/p/w;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/m;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Ljava/util/logging/ConsoleHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 48
    return-void
.end method
