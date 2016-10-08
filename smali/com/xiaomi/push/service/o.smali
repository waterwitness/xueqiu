.class public final Lcom/xiaomi/push/service/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/push/service/o;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/o;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/o;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/o;->a:Lcom/xiaomi/push/service/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/o;->a:Lcom/xiaomi/push/service/o;

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/o;->a:Lcom/xiaomi/push/service/o;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lcom/xiaomi/push/service/o;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/o;->c:I

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/o;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/o;->c:I

    iget v0, p0, Lcom/xiaomi/push/service/o;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/o;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/service/o;->c:I

    iget v0, p0, Lcom/xiaomi/push/service/o;->c:I

    goto :goto_0
.end method
