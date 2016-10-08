.class public abstract Lcom/sleepycat/b/l/x;
.super Ljava/lang/Object;
.source "Key.java"


# static fields
.field public static final a:Lcom/sleepycat/b/l/x;

.field public static final b:Lcom/sleepycat/b/l/x;

.field public static final c:Lcom/sleepycat/b/l/x;

.field public static final d:Lcom/sleepycat/b/l/x;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/sleepycat/b/l/x$1;

    const-string v1, "BINARY"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/x$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/l/x;->a:Lcom/sleepycat/b/l/x;

    .line 42
    new-instance v0, Lcom/sleepycat/b/l/x$2;

    const-string v1, "HEX"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/x$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/l/x;->b:Lcom/sleepycat/b/l/x;

    .line 52
    new-instance v0, Lcom/sleepycat/b/l/x$3;

    const-string v1, "TEXT"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/x$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/l/x;->c:Lcom/sleepycat/b/l/x;

    .line 59
    new-instance v0, Lcom/sleepycat/b/l/x$4;

    const-string v1, "OBFUSCATE"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/l/x$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/l/x;->d:Lcom/sleepycat/b/l/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sleepycat/b/l/x;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/b/l/x;->a(Ljava/lang/StringBuilder;[B)V

    .line 75
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method abstract a(Ljava/lang/StringBuilder;[B)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sleepycat/b/l/x;->e:Ljava/lang/String;

    return-object v0
.end method
