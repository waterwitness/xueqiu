.class public abstract Lcom/sleepycat/b/i/c/ap;
.super Ljava/lang/Object;
.source "TextProtocol.java"


# static fields
.field static final synthetic t:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/c/av;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/sleepycat/b/i/c/b/x;

.field protected final l:Ljava/lang/String;

.field public m:I

.field public final n:Lcom/sleepycat/b/i/c/av;

.field public final o:Lcom/sleepycat/b/i/c/av;

.field public final p:Lcom/sleepycat/b/i/c/av;

.field protected final q:Ljava/util/logging/Logger;

.field protected final r:Ljava/util/logging/Formatter;

.field protected final s:Lcom/sleepycat/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/sleepycat/b/i/c/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/ap;->t:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/16 v0, 0x2710

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lcom/sleepycat/b/i/c/ap;->c:I

    .line 93
    iput v0, p0, Lcom/sleepycat/b/i/c/ap;->m:I

    .line 100
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "PE"

    const-class v2, Lcom/sleepycat/b/i/c/ax;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->n:Lcom/sleepycat/b/i/c/av;

    .line 102
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "OK"

    const-class v2, Lcom/sleepycat/b/i/c/aw;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->o:Lcom/sleepycat/b/i/c/av;

    .line 103
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "FAIL"

    const-class v2, Lcom/sleepycat/b/i/c/aq;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->p:Lcom/sleepycat/b/i/c/av;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    .line 127
    iput-object p1, p0, Lcom/sleepycat/b/i/c/ap;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/sleepycat/b/i/c/ap;->b:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/sleepycat/b/i/c/ap;->k:Lcom/sleepycat/b/i/c/b/x;

    .line 130
    iput-object p4, p0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|-2147483648"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->l:Ljava/lang/String;

    .line 135
    if-eqz p4, :cond_0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    .line 140
    :goto_0
    new-instance v0, Lcom/sleepycat/b/i/h/w;

    invoke-direct {v0, p3}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    .line 141
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 210
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/c/ap;)Lcom/sleepycat/b/i/c/b/x;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->k:Lcom/sleepycat/b/i/c/b/x;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/c/ap;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sleepycat/b/i/c/ap;->m:I

    return v0
.end method

.method static synthetic e(Lcom/sleepycat/b/i/c/ap;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sleepycat/b/i/c/ap;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/b/i/c/ay;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    .line 804
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 807
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 808
    if-nez v2, :cond_0

    .line 821
    :goto_0
    return-object v0

    .line 813
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/i/c/ap;->c(Ljava/lang/String;)Lcom/sleepycat/b/i/c/ay;
    :try_end_0
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v2

    .line 815
    iget-object v3, p0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message format error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 818
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 819
    new-instance v1, Lcom/sleepycat/b/i/c/ax;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/b/i/c/ax;-><init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/ar;)V

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/ax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;
    .locals 7

    .prologue
    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 830
    :try_start_0
    const-string v1, "process"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 832
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/az;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    iget-object v1, p0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Method: process("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") was missing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 839
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 840
    :catch_1
    move-exception v0

    .line 841
    iget-object v1, p0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 844
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/b/c;Lcom/sleepycat/b/b/c;)V
    .locals 2

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 3392
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 153
    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/i/c/ap;->c:I

    .line 154
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/ap;->m:I

    goto :goto_0
.end method

.method public final a([Lcom/sleepycat/b/i/c/av;)V
    .locals 5

    .prologue
    .line 169
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 170
    iget-object v3, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    .line 4216
    iget-object v4, v2, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 170
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/b/i/c/ap;->d:I

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ap;->n:Lcom/sleepycat/b/i/c/av;

    .line 5216
    iget-object v1, v1, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->n:Lcom/sleepycat/b/i/c/av;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ap;->o:Lcom/sleepycat/b/i/c/av;

    .line 6216
    iget-object v1, v1, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->o:Lcom/sleepycat/b/i/c/av;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/ap;->p:Lcom/sleepycat/b/i/c/av;

    .line 7216
    iget-object v1, v1, Lcom/sleepycat/b/i/c/av;->a:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->p:Lcom/sleepycat/b/i/c/av;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/as;
    .locals 5

    .prologue
    .line 277
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    sget v0, Lcom/sleepycat/b/i/c/bb;->d:I

    add-int/lit8 v0, v0, -0x1

    .line 280
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 281
    new-instance v0, Lcom/sleepycat/b/i/c/ar;

    sget-object v1, Lcom/sleepycat/b/i/c/at;->a:Lcom/sleepycat/b/i/c/at;

    const-string v2, "Missing message op"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/ar;-><init>(Lcom/sleepycat/b/i/c/at;Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/i/c/ap;->e:Ljava/util/Map;

    aget-object v0, v1, v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/av;

    .line 285
    sget-boolean v2, Lcom/sleepycat/b/i/c/ap;->t:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7234
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/sleepycat/b/i/c/av;->b:Ljava/lang/Class;

    .line 288
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 292
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/as;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 293
    return-object v0

    .line 295
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 297
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 299
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 301
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 302
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 304
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 305
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 307
    :cond_2
    instance-of v2, v0, Lcom/sleepycat/b/i/c/ar;

    if-eqz v2, :cond_3

    .line 308
    check-cast v0, Lcom/sleepycat/b/i/c/ar;

    throw v0

    .line 310
    :cond_3
    invoke-static {v1}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/sleepycat/b/i/c/ay;
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/c/ap;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/as;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/ay;

    return-object v0
.end method
