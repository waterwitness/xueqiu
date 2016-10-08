.class public final enum Lcom/sleepycat/b/g/a/f;
.super Ljava/lang/Enum;
.source "DbOperationType.java"

# interfaces
.implements Lcom/sleepycat/b/g/ax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/g/a/f;",
        ">;",
        "Lcom/sleepycat/b/g/ax;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/g/a/f;

.field public static final enum b:Lcom/sleepycat/b/g/a/f;

.field public static final enum c:Lcom/sleepycat/b/g/a/f;

.field public static final enum d:Lcom/sleepycat/b/g/a/f;

.field public static final enum e:Lcom/sleepycat/b/g/a/f;

.field public static final enum f:Lcom/sleepycat/b/g/a/f;

.field private static final synthetic h:[Lcom/sleepycat/b/g/a/f;


# instance fields
.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    .line 24
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v5, v5}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->b:Lcom/sleepycat/b/g/a/f;

    .line 25
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->c:Lcom/sleepycat/b/g/a/f;

    .line 26
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "TRUNCATE"

    invoke-direct {v0, v1, v7, v7}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    .line 27
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "RENAME"

    invoke-direct {v0, v1, v8, v8}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->e:Lcom/sleepycat/b/g/a/f;

    .line 28
    new-instance v0, Lcom/sleepycat/b/g/a/f;

    const-string v1, "UPDATE_CONFIG"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/a/f;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/b/g/a/f;->f:Lcom/sleepycat/b/g/a/f;

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/g/a/f;->b:Lcom/sleepycat/b/g/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/g/a/f;->c:Lcom/sleepycat/b/g/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/b/g/a/f;->e:Lcom/sleepycat/b/g/a/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/g/a/f;->f:Lcom/sleepycat/b/g/a/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/g/a/f;->h:[Lcom/sleepycat/b/g/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-byte p3, p0, Lcom/sleepycat/b/g/a/f;->g:B

    .line 41
    return-void
.end method

.method public static a(Lcom/sleepycat/b/g/a/f;)Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/sleepycat/b/g/a/f;->b:Lcom/sleepycat/b/g/a/f;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/a/f;->f:Lcom/sleepycat/b/g/a/f;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Lcom/sleepycat/b/g/a/f;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 47
    packed-switch v0, :pswitch_data_0

    .line 65
    sget-object v0, Lcom/sleepycat/b/g/a/f;->a:Lcom/sleepycat/b/g/a/f;

    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/sleepycat/b/g/a/f;->b:Lcom/sleepycat/b/g/a/f;

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/sleepycat/b/g/a/f;->c:Lcom/sleepycat/b/g/a/f;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    goto :goto_0

    .line 58
    :pswitch_3
    sget-object v0, Lcom/sleepycat/b/g/a/f;->e:Lcom/sleepycat/b/g/a/f;

    goto :goto_0

    .line 61
    :pswitch_4
    sget-object v0, Lcom/sleepycat/b/g/a/f;->f:Lcom/sleepycat/b/g/a/f;

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/g/a/f;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sleepycat/b/g/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/a/f;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/g/a/f;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sleepycat/b/g/a/f;->h:[Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v0}, [Lcom/sleepycat/b/g/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/g/a/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 109
    const-string v0, "<DbOp val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 97
    iget-byte v0, p0, Lcom/sleepycat/b/g/a/f;->g:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/g/a/f;->g:B

    .line 104
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    instance-of v1, p1, Lcom/sleepycat/b/g/a/f;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Lcom/sleepycat/b/g/a/f;->g:B

    check-cast p1, Lcom/sleepycat/b/g/a/f;

    iget-byte v2, p1, Lcom/sleepycat/b/g/a/f;->g:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 91
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 92
    return-void
.end method
