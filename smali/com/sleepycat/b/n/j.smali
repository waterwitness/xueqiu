.class public Lcom/sleepycat/b/n/j;
.super Ljava/lang/Object;
.source "LockInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static c:Z

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/n/j;",
            "Lcom/sleepycat/b/n/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/sleepycat/b/n/q;

.field protected b:Lcom/sleepycat/b/n/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/b/n/j;->c:Z

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/n/j;->d:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/n/j;)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-object v0, p1, Lcom/sleepycat/b/n/j;->a:Lcom/sleepycat/b/n/q;

    iput-object v0, p0, Lcom/sleepycat/b/n/j;->a:Lcom/sleepycat/b/n/q;

    .line 66
    iget-object v0, p1, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    iput-object v0, p0, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    .line 68
    sget-boolean v0, Lcom/sleepycat/b/n/j;->c:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/sleepycat/b/n/j;->d:Ljava/util/Map;

    sget-object v1, Lcom/sleepycat/b/n/j;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sleepycat/b/n/j;->a:Lcom/sleepycat/b/n/q;

    .line 52
    iput-object p2, p0, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    .line 54
    sget-boolean v0, Lcom/sleepycat/b/n/j;->c:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/sleepycat/b/n/j;->d:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/b/n/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/b/n/k;-><init>(B)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lcom/sleepycat/b/n/j;->c:Z

    .line 38
    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/n/o;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    .line 92
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/sleepycat/b/n/q;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sleepycat/b/n/j;->a:Lcom/sleepycat/b/n/q;

    return-object v0
.end method

.method final g()Lcom/sleepycat/b/n/o;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1f4

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    const-string v0, "<LockInfo locker=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v0, p0, Lcom/sleepycat/b/n/j;->a:Lcom/sleepycat/b/n/q;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, "\" type=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lcom/sleepycat/b/n/j;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, "\"/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget-boolean v0, Lcom/sleepycat/b/n/j;->c:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/sleepycat/b/n/j;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const-string v2, " lock taken at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
