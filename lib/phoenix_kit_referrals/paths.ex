defmodule PhoenixKitReferrals.Paths do
  @moduledoc """
  Centralized path helpers for the Referrals module.

  Every path goes through `PhoenixKit.Utils.Routes.path/1`, which applies the
  parent app's configurable URL prefix (e.g. `/phoenix_kit`) and locale prefix
  (e.g. `/ja`) automatically.

  Use these helpers in templates and `push_navigate/2` calls instead of
  hardcoding URLs. If the admin mount point ever changes, this is the single
  file to update and every navigation follows.
  """

  alias PhoenixKit.Utils.Routes

  @base "/admin/users/referral-codes"

  @doc "Referral list / management page (under admin Users)."
  @spec index() :: String.t()
  def index, do: Routes.path(@base)

  @doc "New-referral form."
  @spec new() :: String.t()
  def new, do: Routes.path("#{@base}/new")

  @doc "Edit form for the referral addressed by `code_uuid`."
  @spec edit(String.t()) :: String.t()
  def edit(code_uuid), do: Routes.path("#{@base}/edit/#{code_uuid}")

  @doc "Referrals settings page (under admin Settings)."
  @spec settings() :: String.t()
  def settings, do: Routes.path("/admin/settings/referral-codes")
end
