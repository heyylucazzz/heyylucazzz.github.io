.class public final synthetic La/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;

.field public final synthetic b:La/b;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;La/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, La/a;->a:Landroid/content/SharedPreferences;

    .line 6
    iput-object p2, p0, La/a;->b:La/b;

    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 1
    sget p1, Lio/github/heyylucazzz/imnotadeveloper/app/SettingsActivity;->b:I

    .line 3
    const-string p1, "$option"

    .line 5
    iget-object v0, p0, La/a;->b:La/b;

    .line 7
    invoke-static {v0, p1}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, La/a;->a:Landroid/content/SharedPreferences;

    .line 12
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, v0, La/b;->b:Ljava/lang/String;

    .line 18
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    return-void
.end method
