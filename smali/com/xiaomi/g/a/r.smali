.class public Lcom/xiaomi/g/a/r;
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
        "Lcom/xiaomi/g/a/r;",
        "Lcom/xiaomi/g/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/g/a/s;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lorg/apache/a/b/m;

.field private static final m:Lorg/apache/a/b/e;

.field private static final n:Lorg/apache/a/b/e;

.field private static final o:Lorg/apache/a/b/e;

.field private static final p:Lorg/apache/a/b/e;

.field private static final q:Lorg/apache/a/b/e;

.field private static final r:Lorg/apache/a/b/e;

.field private static final s:Lorg/apache/a/b/e;

.field private static final t:Lorg/apache/a/b/e;

.field private static final u:Lorg/apache/a/b/e;

.field private static final v:Lorg/apache/a/b/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/g/a/f;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "XmPushActionRegistration"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/g/a/r;->l:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->m:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "target"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->n:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->o:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->p:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "appVersion"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->q:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->r:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "token"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->s:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "deviceId"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->t:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "aliasName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->u:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "sdkVersion"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/r;->v:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/g/a/s;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/g/a/s;->a:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->b:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "target"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/g/a/f;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->c:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "id"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->d:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->e:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "appVersion"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->f:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->g:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "token"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->h:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "deviceId"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->i:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "aliasName"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/s;->j:Lcom/xiaomi/g/a/s;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "sdkVersion"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/g/a/r;->k:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/g/a/r;

    sget-object v1, Lcom/xiaomi/g/a/r;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

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

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'token\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/a/b/h;)V
    .locals 4

    const/16 v3, 0xb

    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_a

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/xiaomi/g/a/f;

    invoke-direct {v0}, Lcom/xiaomi/g/a/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->a(Lorg/apache/a/b/h;)V

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

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :pswitch_9
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_9

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final a(Lcom/xiaomi/g/a/r;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v1, v2}, Lcom/xiaomi/g/a/f;->a(Lcom/xiaomi/g/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->g()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->g()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v2

    if-nez v1, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v2

    if-nez v1, :cond_12

    if-eqz v2, :cond_13

    :cond_12
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v2

    if-nez v1, :cond_14

    if-eqz v2, :cond_15

    :cond_14
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->k()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/g/a/r;->m:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/g/a/r;->n:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->b(Lorg/apache/a/b/h;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/g/a/r;->o:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/g/a/r;->p:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/g/a/r;->q:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/g/a/r;->r:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/g/a/r;->s:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/g/a/r;->t:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/xiaomi/g/a/r;->u:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaomi/g/a/r;->v:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/g/a/r;

    .line 1000
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
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_b
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
    instance-of v1, p1, Lcom/xiaomi/g/a/r;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/g/a/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/g/a/r;->a(Lcom/xiaomi/g/a/r;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionRegistration("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->b()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    if-nez v0, :cond_9

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "token:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "deviceId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "aliasName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_8
    invoke-direct {p0}, Lcom/xiaomi/g/a/r;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdkVersion:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_9
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/g/a/r;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move v1, v0

    goto/16 :goto_1
.end method
