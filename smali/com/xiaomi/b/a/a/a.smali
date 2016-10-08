.class public Lcom/xiaomi/b/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/a/b",
        "<",
        "Lcom/xiaomi/b/a/a/a;",
        "Lcom/xiaomi/b/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/b/a/a/b;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lorg/apache/a/b/m;

.field private static final h:Lorg/apache/a/b/e;

.field private static final i:Lorg/apache/a/b/e;

.field private static final j:Lorg/apache/a/b/e;

.field private static final k:Lorg/apache/a/b/e;

.field private static final l:Lorg/apache/a/b/e;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private m:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/16 v5, 0xb

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "Common"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->g:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "uuid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->h:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "time"

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->i:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "clientIp"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->j:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "serverIp"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->k:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "serverHost"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/b/a/a/a;->l:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/b/a/a/b;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/b/a/a/b;->a:Lcom/xiaomi/b/a/a/b;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "uuid"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v7}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/b;->b:Lcom/xiaomi/b/a/a/b;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "time"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/b;->c:Lcom/xiaomi/b/a/a/b;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "clientIp"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/b;->d:Lcom/xiaomi/b/a/a/b;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "serverIp"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/b/a/a/b;->e:Lcom/xiaomi/b/a/a/b;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "serverHost"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v5}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/b/a/a/a;->f:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/b/a/a/a;

    sget-object v1, Lcom/xiaomi/b/a/a/a;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->m:Ljava/util/BitSet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/b/a/a/a;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->m:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/apache/a/b/h;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_5

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/b/a/a/a;->a:J

    .line 1000
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->m:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 0
    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/xiaomi/b/a/a/a;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/b/a/a/a;->a:J

    iget-wide v4, p1, Lcom/xiaomi/b/a/a/a;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/b/a/a/a;->h:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-wide v0, p0, Lcom/xiaomi/b/a/a/a;->a:J

    invoke-virtual {p1, v0, v1}, Lorg/apache/a/b/h;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/b/a/a/a;->i:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/b/a/a/a;->j:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/b/a/a/a;->k:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/b/a/a/a;->l:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/b/a/a/a;

    .line 2000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/xiaomi/b/a/a/a;->a:J

    iget-wide v2, p1, Lcom/xiaomi/b/a/a/a;->a:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/a/c;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/b/a/a/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/b/a/a/a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/b/a/a/a;->a(Lcom/xiaomi/b/a/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Common("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "uuid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaomi/b/a/a/a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "time:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "clientIp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v0, v1

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "serverIp:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/b/a/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, "serverHost:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/b/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    move v1, v0

    goto :goto_2
.end method
